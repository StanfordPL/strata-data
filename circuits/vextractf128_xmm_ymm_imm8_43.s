  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  callq .move_256_128_ymm1_xmm8_xmm9  #  1     0     5      OPC=callq_label            
  pmovzxwd %xmm1, %xmm11              #  2     0x5   6      OPC=pmovzxwd_xmm_xmm       
  vunpcklpd %xmm11, %xmm9, %xmm0      #  3     0xb   5      OPC=vunpcklpd_xmm_xmm_xmm  
  vmovsd %xmm0, %xmm9, %xmm1          #  4     0x10  4      OPC=vmovsd_xmm_xmm_xmm     
  retq                                #  5     0x14  1      OPC=retq                   
                                                                                       
.size target, .-target
