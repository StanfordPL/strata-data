  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_064_xmm2_r12_r13              #  1     0     5      OPC=callq_label            
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label            
  orl %r12d, %r12d                              #  3     0xa   3      OPC=orl_r32_r32            
  cmovngl %r13d, %r13d                          #  4     0xd   4      OPC=cmovngl_r32_r32        
  callq .move_064_128_r12_r13_xmm2              #  5     0x11  5      OPC=callq_label            
  vunpcklpd %xmm2, %xmm5, %xmm1                 #  6     0x16  4      OPC=vunpcklpd_xmm_xmm_xmm  
  phsubd %xmm2, %xmm1                           #  7     0x1a  5      OPC=phsubd_xmm_xmm         
  retq                                          #  8     0x1f  1      OPC=retq                   
                                                                                                 
.size target, .-target
