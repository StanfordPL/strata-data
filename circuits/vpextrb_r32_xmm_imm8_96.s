  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  xorq %rbx, %rbx                   #  1     0     3      OPC=xorq_r64_r64       
  vpmovzxbq %xmm1, %ymm2            #  2     0x3   5      OPC=vpmovzxbq_ymm_xmm  
  callq .move_128_064_xmm2_r12_r13  #  3     0x8   5      OPC=callq_label        
  adcb %r12b, %bl                   #  4     0xd   3      OPC=adcb_r8_r8         
  retq                              #  5     0x10  1      OPC=retq               
                                                                                 
.size target, .-target
