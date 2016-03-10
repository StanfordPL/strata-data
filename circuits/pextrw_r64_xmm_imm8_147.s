  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  vpmovzxwd %xmm1, %ymm3                        #  1     0     5      OPC=vpmovzxwd_ymm_xmm  
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  2     0x5   5      OPC=callq_label        
  movq $0x8, %rbx                               #  3     0xa   10     OPC=movq_r64_imm64     
  xchgl %r10d, %r13d                            #  4     0x14  3      OPC=xchgl_r32_r32      
  movw %r10w, %bx                               #  5     0x17  4      OPC=movw_r16_r16       
  retq                                          #  6     0x1b  1      OPC=retq               
                                                                                             
.size target, .-target
