  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  2     0x5   5      OPC=callq_label            
  vpbroadcastw %xmm11, %ymm0                      #  3     0xa   5      OPC=vpbroadcastw_ymm_xmm   
  movsldup %xmm1, %xmm15                          #  4     0xf   5      OPC=movsldup_xmm_xmm       
  movdqu %xmm0, %xmm1                             #  5     0x14  4      OPC=movdqu_xmm_xmm         
  vunpckhps %xmm15, %xmm1, %xmm14                 #  6     0x18  5      OPC=vunpckhps_xmm_xmm_xmm  
  vmovsd %xmm2, %xmm14, %xmm1                     #  7     0x1d  4      OPC=vmovsd_xmm_xmm_xmm     
  retq                                            #  8     0x21  1      OPC=retq                   
                                                                                                   
.size target, .-target
