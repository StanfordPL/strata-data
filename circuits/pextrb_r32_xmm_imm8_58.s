  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                          
.target:                              #        0     0      OPC=<label>                     
  xorpd %xmm5, %xmm5                  #  1     0     4      OPC=xorpd_xmm_xmm               
  vunpckhps %xmm1, %xmm1, %xmm11      #  2     0x4   4      OPC=vunpckhps_xmm_xmm_xmm       
  vfmaddsub231ps %xmm5, %xmm5, %xmm5  #  3     0x8   5      OPC=vfmaddsub231ps_xmm_xmm_xmm  
  vpunpckhdq %xmm1, %xmm5, %xmm5      #  4     0xd   4      OPC=vpunpckhdq_xmm_xmm_xmm      
  vaddss %xmm11, %xmm5, %xmm1         #  5     0x11  5      OPC=vaddss_xmm_xmm_xmm          
  callq .move_byte_6_of_ymm1_to_r9b   #  6     0x16  5      OPC=callq_label                 
  movzbl %r9b, %ebx                   #  7     0x1b  4      OPC=movzbl_r32_r8               
  retq                                #  8     0x1f  1      OPC=retq                        
                                                                                            
.size target, .-target
