  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP  Bytes  Opcode             
.target:                   #        0    0      OPC=<label>        
  xorq %rax, %rax          #  1     0    3      OPC=xorq_r64_r64   
  callq .read_zf_into_rcx  #  2     0x3  5      OPC=callq_label    
  movsbq %cl, %rdx         #  3     0x8  4      OPC=movsbq_r64_r8  
  adcb %dl, %bl            #  4     0xc  2      OPC=adcb_r8_r8     
  retq                     #  5     0xe  1      OPC=retq           
                                                                   
.size target, .-target
