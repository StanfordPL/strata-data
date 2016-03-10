  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                 
.target:                          #        0     0      OPC=<label>            
  vpmovzxwq %xmm1, %ymm3          #  1     0     5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_064_xmm3_r8_r9  #  2     0x5   5      OPC=callq_label        
  xchgl %r9d, %r8d                #  3     0xa   3      OPC=xchgl_r32_r32      
  movq %r9, %rbx                  #  4     0xd   3      OPC=movq_r64_r64       
  retq                            #  5     0x10  1      OPC=retq               
                                                                               
.size target, .-target
