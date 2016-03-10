  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                   
.target:                                #        0     0      OPC=<label>              
  vpmovzxbd %xmm1, %ymm0                #  1     0     5      OPC=vpmovzxbd_ymm_xmm    
  paddq %xmm1, %xmm0                    #  2     0x5   4      OPC=paddq_xmm_xmm        
  vmovss %xmm0, %xmm0, %xmm12           #  3     0x9   4      OPC=vmovss_xmm_xmm_xmm   
  vminsd %xmm12, %xmm1, %xmm14          #  4     0xd   5      OPC=vminsd_xmm_xmm_xmm   
  callq .move_256_128_ymm1_xmm10_xmm11  #  5     0x12  5      OPC=callq_label          
  vphsubd %xmm14, %xmm1, %xmm1          #  6     0x17  5      OPC=vphsubd_xmm_xmm_xmm  
  movapd %xmm11, %xmm1                  #  7     0x1c  5      OPC=movapd_xmm_xmm       
  retq                                  #  8     0x21  1      OPC=retq                 
                                                                                       
.size target, .-target
