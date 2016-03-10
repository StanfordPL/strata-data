  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  vmovaps %xmm1, %xmm13                #  1     0     4      OPC=vmovaps_xmm_xmm          
  vcvtpd2dqx %xmm2, %xmm7              #  2     0x4   4      OPC=vcvtpd2dqx_xmm_xmm       
  vpunpckhqdq %xmm1, %xmm2, %xmm8      #  3     0x8   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vsqrtss %xmm7, %xmm2, %xmm11         #  4     0xc   4      OPC=vsqrtss_xmm_xmm_xmm      
  vunpckhpd %xmm11, %xmm13, %xmm10     #  5     0x10  5      OPC=vunpckhpd_xmm_xmm_xmm    
  callq .move_64_128_xmm10_xmm11_xmm1  #  6     0x15  5      OPC=callq_label              
  punpcklwd %xmm8, %xmm1               #  7     0x1a  5      OPC=punpcklwd_xmm_xmm        
  retq                                 #  8     0x1f  1      OPC=retq                     
                                                                                          
.size target, .-target
