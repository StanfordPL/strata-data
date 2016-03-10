  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .read_zf_into_rcx  #  1     0    5      OPC=callq_label   
  movl %ecx, %eax          #  2     0x5  2      OPC=movl_r32_r32  
  adcb %ah, %al            #  3     0x7  2      OPC=adcb_r8_rh    
  callq .read_pf_into_rbx  #  4     0x9  5      OPC=callq_label   
  retq                     #  5     0xe  1      OPC=retq          
                                                                  
.size target, .-target
