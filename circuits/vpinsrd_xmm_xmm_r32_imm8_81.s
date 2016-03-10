  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  vmovupd %xmm2, %xmm9                          #  2     0x5   4      OPC=vmovupd_xmm_xmm     
  movd %ebx, %xmm3                              #  3     0x9   4      OPC=movd_xmm_r32        
  unpcklps %xmm3, %xmm4                         #  4     0xd   3      OPC=unpcklps_xmm_xmm    
  vmovsd %xmm4, %xmm9, %xmm1                    #  5     0x10  4      OPC=vmovsd_xmm_xmm_xmm  
  retq                                          #  6     0x14  1      OPC=retq                
                                                                                              
.size target, .-target
