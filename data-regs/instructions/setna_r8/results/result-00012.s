  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .read_zf_into_rbx  #  1     0    5      OPC=callq_label   
  setbe %bl                #  2     0x5  3      OPC=setbe_r8      
  movl %ebx, %ebx          #  3     0x8  2      OPC=movl_r32_r32  
  retq                     #  4     0xa  1      OPC=retq          
                                                                  
.size target, .-target
