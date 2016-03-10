  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  xorl %ebx, %ebx                                 #  2     0x5   2      OPC=xorl_r32_r32       
  vpmovzxwq %xmm9, %xmm1                          #  3     0x7   5      OPC=vpmovzxwq_xmm_xmm  
  rorb $0x1, %bh                                  #  4     0xc   2      OPC=rorb_rh_one        
  callq .move_128_064_xmm1_r12_r13                #  5     0xe   5      OPC=callq_label        
  xchgl %r13d, %ebx                               #  6     0x13  3      OPC=xchgl_r32_r32      
  cmovbl %r12d, %ebx                              #  7     0x16  4      OPC=cmovbl_r32_r32     
  retq                                            #  8     0x1a  1      OPC=retq               
                                                                                               
.size target, .-target
