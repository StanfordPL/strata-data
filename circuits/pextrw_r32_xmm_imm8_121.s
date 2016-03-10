  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  xorl %ebx, %ebx                           #  1     0     2      OPC=xorl_r32_r32       
  vpmovzxwq %xmm1, %xmm2                    #  2     0x2   5      OPC=vpmovzxwq_xmm_xmm  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  3     0x7   5      OPC=callq_label        
  cmovnlw %r8w, %bx                         #  4     0xc   5      OPC=cmovnlw_r16_r16    
  retq                                      #  5     0x11  1      OPC=retq               
                                                                                         
.size target, .-target
