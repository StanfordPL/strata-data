  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  movd %ebx, %xmm5                #  1     0     4      OPC=movd_xmm_r32            
  vpbroadcastd %xmm5, %xmm3       #  2     0x4   5      OPC=vpbroadcastd_xmm_xmm    
  vpunpckhdq %xmm2, %xmm3, %xmm9  #  3     0x9   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovsd %xmm2, %xmm9, %xmm1      #  4     0xd   4      OPC=vmovsd_xmm_xmm_xmm      
  retq                            #  5     0x11  1      OPC=retq                    
                                                                                    
.size target, .-target
