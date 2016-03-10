  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode              
.target:                   #        0    0      OPC=<label>         
  callq .read_of_into_rbx  #  1     0    5      OPC=callq_label     
  setle %bh                #  2     0x5  3      OPC=setle_rh        
  movswl %bx, %eax         #  3     0x8  3      OPC=movswl_r32_r16  
  retq                     #  4     0xb  1      OPC=retq            
                                                                    
.size target, .-target
