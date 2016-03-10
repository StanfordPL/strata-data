  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label             
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label             
  movmskpd %xmm9, %r13d                           #  3     0xa   5      OPC=movmskpd_r32_xmm        
  vhsubpd %xmm5, %xmm9, %xmm11                    #  4     0xf   4      OPC=vhsubpd_xmm_xmm_xmm     
  vmovapd %ymm11, %ymm8                           #  5     0x13  5      OPC=vmovapd_ymm_ymm         
  bswap %r13d                                     #  6     0x18  3      OPC=bswap_r32               
  vcvtsi2sdl %r13d, %xmm2, %xmm1                  #  7     0x1b  5      OPC=vcvtsi2sdl_xmm_xmm_r32  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  8     0x20  5      OPC=callq_label             
  retq                                            #  9     0x25  1      OPC=retq                    
                                                                                                    
.size target, .-target
