  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  vpmovzxbq %xmm1, %ymm3                        #  1     0     5      OPC=vpmovzxbq_ymm_xmm  
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  2     0x5   5      OPC=callq_label        
  movq $0x1, %rbx                               #  3     0xa   10     OPC=movq_r64_imm64     
  rolb $0x1, %bh                                #  4     0x14  2      OPC=rolb_rh_one        
  setb %bl                                      #  5     0x16  3      OPC=setb_r8            
  addb %r10b, %bl                               #  6     0x19  3      OPC=addb_r8_r8         
  retq                                          #  7     0x1c  1      OPC=retq               
                                                                                             
.size target, .-target
