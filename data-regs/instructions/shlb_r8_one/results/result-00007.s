  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbq %bl, %rbp  #  1     0    4      OPC=movsbq_r64_r8  
  callq .clear_cf   #  2     0x4  5      OPC=callq_label    
  adcb %bpl, %bl    #  3     0x9  3      OPC=adcb_r8_r8     
  retq              #  4     0xc  1      OPC=retq           
                                                            
.size target, .-target
