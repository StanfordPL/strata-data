  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  movdqu %xmm1, %xmm7                           #  1     0     4      OPC=movdqu_xmm_xmm     
  vpmovzxwd %xmm7, %xmm3                        #  2     0x4   5      OPC=vpmovzxwd_xmm_xmm  
  xorl %ebx, %ebx                               #  3     0x9   2      OPC=xorl_r32_r32       
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  4     0xb   5      OPC=callq_label        
  cmovncw %r11w, %bx                            #  5     0x10  5      OPC=cmovncw_r16_r16    
  retq                                          #  6     0x15  1      OPC=retq               
                                                                                             
.size target, .-target
