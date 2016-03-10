  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbl %ah, %eax  #  1     0    3      OPC=movsbl_r32_rh  
  testb %bh, %al    #  2     0x3  2      OPC=testb_r8_rh    
  callq .clear_of   #  3     0x5  5      OPC=callq_label    
  retq              #  4     0xa  1      OPC=retq           
                                                            
.size target, .-target
