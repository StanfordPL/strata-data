  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  orb %ch, %ch            #  1     0    2      OPC=orb_rh_rh          
  shrxl %ecx, %ebx, %ebp  #  2     0x2  5      OPC=shrxl_r32_r32_r32  
  sarl $0x1, %ebp         #  3     0x7  2      OPC=sarl_r32_one       
  retq                    #  4     0x9  1      OPC=retq               
                                                                      
.size target, .-target
