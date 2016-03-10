  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  vpmovzxwd %xmm1, %xmm1                    #  1     0     5      OPC=vpmovzxwd_xmm_xmm  
  xorl %ebx, %ebx                           #  2     0x5   2      OPC=xorl_r32_r32       
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0x7   5      OPC=callq_label        
  movw %r9w, %bx                            #  4     0xc   4      OPC=movw_r16_r16       
  retq                                      #  5     0x10  1      OPC=retq               
                                                                                         
.size target, .-target
