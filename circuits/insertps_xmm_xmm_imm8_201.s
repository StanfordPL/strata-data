  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label           
  vpand %xmm5, %xmm7, %xmm4                     #  2     0x5   4      OPC=vpand_xmm_xmm_xmm     
  vmovhlps %xmm4, %xmm4, %xmm14                 #  3     0x9   4      OPC=vmovhlps_xmm_xmm_xmm  
  vmovsd %xmm14, %xmm1, %xmm5                   #  4     0xd   5      OPC=vmovsd_xmm_xmm_xmm    
  movss %xmm5, %xmm1                            #  5     0x12  4      OPC=movss_xmm_xmm         
  movlhps %xmm6, %xmm1                          #  6     0x16  3      OPC=movlhps_xmm_xmm       
  retq                                          #  7     0x19  1      OPC=retq                  
                                                                                                
.size target, .-target
