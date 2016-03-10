  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_of_into_rbx  #  1     0     5      OPC=callq_label     
  movzwl %bx, %r15d        #  2     0x5   4      OPC=movzwl_r32_r16  
  callq .read_sf_into_rbx  #  3     0x9   5      OPC=callq_label     
  xorq %rbx, %r15          #  4     0xe   3      OPC=xorq_r64_r64    
  setne %ah                #  5     0x11  3      OPC=setne_rh        
  retq                     #  6     0x14  1      OPC=retq            
                                                                     
.size target, .-target
