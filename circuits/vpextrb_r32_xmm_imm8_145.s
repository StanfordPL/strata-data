  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  vpmovzxbd %xmm1, %ymm3                        #  1     0     5      OPC=vpmovzxbd_ymm_xmm  
  xorq %rbx, %rbx                               #  2     0x5   3      OPC=xorq_r64_r64       
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  3     0x8   5      OPC=callq_label        
  xchgb %r11b, %bl                              #  4     0xd   3      OPC=xchgb_r8_r8        
  retq                                          #  5     0x10  1      OPC=retq               
                                                                                             
.size target, .-target
