  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  vmovshdup %xmm1, %xmm2            #  1     0     4      OPC=vmovshdup_xmm_xmm  
  vpmovzxwq %xmm2, %ymm3            #  2     0x4   5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_064_xmm3_r12_r13  #  3     0x9   5      OPC=callq_label        
  movq $0x0, %rbx                   #  4     0xe   10     OPC=movq_r64_imm64     
  xaddb %bl, %bl                    #  5     0x18  3      OPC=xaddb_r8_r8        
  cmovncw %r13w, %bx                #  6     0x1b  5      OPC=cmovncw_r16_r16    
  retq                              #  7     0x20  1      OPC=retq               
                                                                                 
.size target, .-target
