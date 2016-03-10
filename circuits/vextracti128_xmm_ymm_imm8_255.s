  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm1_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vmovsd %xmm11, %xmm11, %xmm8          #  2     0x5   5      OPC=vmovsd_xmm_xmm_xmm       
  vpmovzxbd %xmm11, %ymm13              #  3     0xa   5      OPC=vpmovzxbd_ymm_xmm        
  vfmsub213ps %xmm13, %xmm11, %xmm1     #  4     0xf   5      OPC=vfmsub213ps_xmm_xmm_xmm  
  movups %xmm8, %xmm1                   #  5     0x14  4      OPC=movups_xmm_xmm           
  retq                                  #  6     0x18  1      OPC=retq                     
                                                                                           
.size target, .-target
