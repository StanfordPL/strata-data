  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  notl %ebx               #  1     0    2      OPC=notl_r32           
  andnl %ecx, %ebx, %r8d  #  2     0x2  5      OPC=andnl_r32_r32_r32  
  movq %r8, %rbx          #  3     0x7  3      OPC=movq_r64_r64       
  testl %ebx, %ebx        #  4     0xa  2      OPC=testl_r32_r32      
  retq                    #  5     0xc  1      OPC=retq               
                                                                      
.size target, .-target
