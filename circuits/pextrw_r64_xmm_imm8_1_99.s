  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  vpmovzxwd %xmm1, %xmm3                        #  1     0     5      OPC=vpmovzxwd_xmm_xmm  
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  2     0x5   5      OPC=callq_label        
  movsbl %r11b, %ebx                            #  3     0xa   4      OPC=movsbl_r32_r8      
  xaddl %ebx, %r13d                             #  4     0xe   4      OPC=xaddl_r32_r32      
  retq                                          #  5     0x12  1      OPC=retq               
                                                                                             
.size target, .-target
