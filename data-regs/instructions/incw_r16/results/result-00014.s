  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  xorq %rax, %rax          #  1     0    3      OPC=xorq_r64_r64  
  clc                      #  2     0x3  1      OPC=clc           
  callq .read_pf_into_rcx  #  3     0x4  5      OPC=callq_label   
  adcw %cx, %bx            #  4     0x9  3      OPC=adcw_r16_r16  
  retq                     #  5     0xc  1      OPC=retq          
                                                                  
.size target, .-target
