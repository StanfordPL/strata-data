  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  pmovzxbd %xmm1, %xmm6             #  1     0     5      OPC=pmovzxbd_xmm_xmm   
  vpmovzxbd %xmm6, %ymm0            #  2     0x5   5      OPC=vpmovzxbd_ymm_xmm  
  unpckhps %xmm0, %xmm1             #  3     0xa   3      OPC=unpckhps_xmm_xmm   
  callq .move_128_064_xmm1_r12_r13  #  4     0xd   5      OPC=callq_label        
  movl %r13d, %ebx                  #  5     0x12  3      OPC=movl_r32_r32       
  retq                              #  6     0x15  1      OPC=retq               
                                                                                 
.size target, .-target
