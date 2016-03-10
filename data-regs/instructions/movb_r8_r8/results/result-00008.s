  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  xorw %bx, %bx            #  1     0    3      OPC=xorw_r16_r16  
  callq .clear_pf          #  2     0x3  5      OPC=callq_label   
  callq .read_pf_into_rbx  #  3     0x8  5      OPC=callq_label   
  adcb %cl, %bl            #  4     0xd  2      OPC=adcb_r8_r8    
  retq                     #  5     0xf  1      OPC=retq          
                                                                  
.size target, .-target
