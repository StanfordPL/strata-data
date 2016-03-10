  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                
.target:                            #        0     0      OPC=<label>           
  movq $0x10, %rbx                  #  1     0     10     OPC=movq_r64_imm64    
  orb %bh, %bl                      #  2     0xa   2      OPC=orb_r8_rh         
  pmovzxwq %xmm1, %xmm2             #  3     0xc   5      OPC=pmovzxwq_xmm_xmm  
  callq .move_128_064_xmm2_r12_r13  #  4     0x11  5      OPC=callq_label       
  cmovaew %r13w, %bx                #  5     0x16  5      OPC=cmovaew_r16_r16   
  retq                              #  6     0x1b  1      OPC=retq              
                                                                                
.size target, .-target
