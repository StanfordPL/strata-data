  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  vpmovzxwq %xmm1, %ymm3            #  1     0     5      OPC=vpmovzxwq_ymm_xmm  
  movq $0x0, %rbx                   #  2     0x5   10     OPC=movq_r64_imm64     
  callq .move_128_064_xmm3_r12_r13  #  3     0xf   5      OPC=callq_label        
  rorb $0x1, %bh                    #  4     0x14  2      OPC=rorb_rh_one        
  xchgw %r13w, %bx                  #  5     0x16  4      OPC=xchgw_r16_r16      
  retq                              #  6     0x1a  1      OPC=retq               
                                                                                 
.size target, .-target
