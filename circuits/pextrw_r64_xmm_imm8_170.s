  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  movq $0x0, %rbx                   #  1     0     10     OPC=movq_r64_imm64     
  vpmovzxdq %xmm1, %xmm1            #  2     0xa   5      OPC=vpmovzxdq_xmm_xmm  
  orb %bh, %bl                      #  3     0xf   2      OPC=orb_r8_rh          
  callq .move_128_064_xmm1_r12_r13  #  4     0x11  5      OPC=callq_label        
  xchgw %r13w, %bx                  #  5     0x16  4      OPC=xchgw_r16_r16      
  retq                              #  6     0x1a  1      OPC=retq               
                                                                                 
.size target, .-target
