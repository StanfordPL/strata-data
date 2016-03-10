  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode             
.target:                   #        0    0      OPC=<label>        
  callq .read_of_into_rbx  #  1     0    5      OPC=callq_label    
  movb %bl, %bh            #  2     0x5  2      OPC=movb_rh_r8     
  movzbw %bl, %ax          #  3     0x7  4      OPC=movzbw_r16_r8  
  xaddw %ax, %bx           #  4     0xb  4      OPC=xaddw_r16_r16  
  retq                     #  5     0xf  1      OPC=retq           
                                                                   
.size target, .-target
