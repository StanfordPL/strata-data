  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  vpxor %xmm10, %xmm10, %xmm14          #  1     0     5      OPC=vpxor_xmm_xmm_xmm      
  vmovaps %ymm14, %ymm9                 #  2     0x5   5      OPC=vmovaps_ymm_ymm        
  vunpckhps %xmm9, %xmm9, %xmm3         #  3     0xa   5      OPC=vunpckhps_xmm_xmm_xmm  
  callq .move_256_128_ymm3_xmm12_xmm13  #  4     0xf   5      OPC=callq_label            
  cvtpd2ps %xmm12, %xmm1                #  5     0x14  5      OPC=cvtpd2ps_xmm_xmm       
  retq                                  #  6     0x19  1      OPC=retq                   
                                                                                         
.size target, .-target
