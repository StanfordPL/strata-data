  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  callq .move_128_064_xmm2_r12_r13     #  2     0x5   5      OPC=callq_label         
  notl %r12d                           #  3     0xa   3      OPC=notl_r32            
  movd %r12d, %xmm14                   #  4     0xd   5      OPC=movd_xmm_r32        
  xorpd %xmm14, %xmm10                 #  5     0x12  5      OPC=xorpd_xmm_xmm       
  vrcpss %xmm10, %xmm2, %xmm1          #  6     0x17  5      OPC=vrcpss_xmm_xmm_xmm  
  retq                                 #  7     0x1c  1      OPC=retq                
                                                                                     
.size target, .-target
