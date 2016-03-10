  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode               
.target:                   #        0    0      OPC=<label>          
  callq .read_pf_into_rcx  #  1     0    5      OPC=callq_label      
  popcntw %cx, %bp         #  2     0x5  5      OPC=popcntw_r16_r16  
  movzbq %bpl, %rbx        #  3     0xa  4      OPC=movzbq_r64_r8    
  retq                     #  4     0xe  1      OPC=retq             
                                                                     
.size target, .-target
