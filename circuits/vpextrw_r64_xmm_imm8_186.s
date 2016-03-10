  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode               
.target:                                          #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label      
  vmovq %xmm9, %r9                                #  2     0x5   5      OPC=vmovq_r64_xmm    
  xorq %rbx, %rbx                                 #  3     0xa   3      OPC=xorq_r64_r64     
  cmovnsw %r9w, %bx                               #  4     0xd   5      OPC=cmovnsw_r16_r16  
  retq                                            #  5     0x12  1      OPC=retq             
                                                                                             
.size target, .-target
