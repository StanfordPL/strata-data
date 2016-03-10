  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  vpmovzxwq %xmm1, %xmm1                        #  1     0     5      OPC=vpmovzxwq_xmm_xmm  
  xorl %ebx, %ebx                               #  2     0x5   2      OPC=xorl_r32_r32       
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  3     0x7   5      OPC=callq_label        
  andnq %rbx, %rbx, %r11                        #  4     0xc   5      OPC=andnq_r64_r64_r64  
  cmovnsw %r12w, %bx                            #  5     0x11  5      OPC=cmovnsw_r16_r16    
  retq                                          #  6     0x16  1      OPC=retq               
                                                                                             
.size target, .-target
