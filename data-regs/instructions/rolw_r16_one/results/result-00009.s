  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  movswq %bx, %r10   #  1     0     4      OPC=movswq_r64_r16  
  callq .clear_cf    #  2     0x4   5      OPC=callq_label     
  adcw %r10w, %r10w  #  3     0x9   4      OPC=adcw_r16_r16    
  adcw %bx, %bx      #  4     0xd   3      OPC=adcw_r16_r16    
  retq               #  5     0x10  1      OPC=retq            
                                                               
.size target, .-target
