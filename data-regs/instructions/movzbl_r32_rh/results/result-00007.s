  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode             
.target:            #        0     0      OPC=<label>        
  movsbw %ah, %dx   #  1     0     4      OPC=movsbw_r16_rh  
  callq .clear_cf   #  2     0x4   5      OPC=callq_label    
  movzbq %dl, %rbx  #  3     0x9   4      OPC=movzbq_r64_r8  
  setc %bh          #  4     0xd   3      OPC=setc_rh        
  retq              #  5     0x10  1      OPC=retq           
                                                             
.size target, .-target
