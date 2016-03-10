  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm5, %ymm1                        #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_064_xmm1_r12_r13              #  3     0xa   5      OPC=callq_label        
  xorl %ebx, %ebx                               #  4     0xf   2      OPC=xorl_r32_r32       
  cmovnlw %r13w, %bx                            #  5     0x11  5      OPC=cmovnlw_r16_r16    
  cmovnbeq %r13, %rbx                           #  6     0x16  4      OPC=cmovnbeq_r64_r64   
  retq                                          #  7     0x1a  1      OPC=retq               
                                                                                             
.size target, .-target
