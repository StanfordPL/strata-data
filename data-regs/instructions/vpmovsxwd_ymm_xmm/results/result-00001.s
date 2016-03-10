  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  vpxor %xmm2, %xmm2, %xmm12            #  1     0     4      OPC=vpxor_xmm_xmm_xmm      
  vunpckhpd %xmm12, %xmm2, %xmm14       #  2     0x4   5      OPC=vunpckhpd_xmm_xmm_xmm  
  pmovsxwd %xmm14, %xmm11               #  3     0x9   6      OPC=pmovsxwd_xmm_xmm       
  pmovsxwd %xmm2, %xmm14                #  4     0xf   6      OPC=pmovsxwd_xmm_xmm       
  pmovsxbd %xmm12, %xmm10               #  5     0x15  6      OPC=pmovsxbd_xmm_xmm       
  callq .move_128_256_xmm10_xmm11_ymm3  #  6     0x1b  5      OPC=callq_label            
  vaddpd %ymm14, %ymm3, %ymm1           #  7     0x20  5      OPC=vaddpd_ymm_ymm_ymm     
  retq                                  #  8     0x25  1      OPC=retq                   
                                                                                         
.size target, .-target
