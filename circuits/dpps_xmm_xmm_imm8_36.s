  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  mulps %xmm2, %xmm1                            #  1     0     3      OPC=mulps_xmm_xmm         
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x3   5      OPC=callq_label           
  vhaddps %xmm5, %xmm1, %xmm6                   #  3     0x8   4      OPC=vhaddps_xmm_xmm_xmm   
  vmovhlps %xmm5, %xmm6, %xmm11                 #  4     0xc   4      OPC=vmovhlps_xmm_xmm_xmm  
  movups %xmm11, %xmm1                          #  5     0x10  4      OPC=movups_xmm_xmm        
  retq                                          #  6     0x14  1      OPC=retq                  
                                                                                                
.size target, .-target
