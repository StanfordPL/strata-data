  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                
.target:                            #        0     0      OPC=<label>           
  xorq %rdi, %rdi                   #  1     0     3      OPC=xorq_r64_r64      
  movq $0xfffffffffffffff9, %rbx    #  2     0x3   10     OPC=movq_r64_imm64    
  callq .move_128_064_xmm1_r12_r13  #  3     0xd   5      OPC=callq_label       
  adcb %bh, %bh                     #  4     0x12  2      OPC=adcb_rh_rh        
  cmovnzl %r13d, %edi               #  5     0x14  4      OPC=cmovnzl_r32_r32   
  cmovnael %edi, %ebx               #  6     0x18  3      OPC=cmovnael_r32_r32  
  retq                              #  7     0x1b  1      OPC=retq              
                                                                                
.size target, .-target
