  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                
.target:                               #        0     0      OPC=<label>           
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label       
  pmovzxwq %xmm13, %xmm3               #  2     0x5   6      OPC=pmovzxwq_xmm_xmm  
  callq .move_128_064_xmm3_r8_r9       #  3     0xb   5      OPC=callq_label       
  movq $0xfffffffffffffff8, %rbx       #  4     0x10  10     OPC=movq_r64_imm64    
  xchgq %r9, %rbx                      #  5     0x1a  3      OPC=xchgq_r64_r64     
  retq                                 #  6     0x1d  1      OPC=retq              
                                                                                   
.size target, .-target
