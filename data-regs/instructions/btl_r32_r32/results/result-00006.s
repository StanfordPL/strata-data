  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  shrxl %ecx, %ebx, %ecx  #  1     0    5      OPC=shrxl_r32_r32_r32  
  negb %ch                #  2     0x5  2      OPC=negb_rh            
  sarq $0x1, %rcx         #  3     0x7  3      OPC=sarq_r64_one       
  retq                    #  4     0xa  1      OPC=retq               
                                                                      
.size target, .-target
