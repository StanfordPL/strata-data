  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  callq .clear_sf   #  1     0    5      OPC=callq_label     
  xchgq %rbx, %rax  #  2     0x5  2      OPC=xchgq_rax_r64   
  cmovsw %bx, %ax   #  3     0x7  4      OPC=cmovsw_r16_r16  
  retq              #  4     0xb  1      OPC=retq            
                                                             
.size target, .-target
