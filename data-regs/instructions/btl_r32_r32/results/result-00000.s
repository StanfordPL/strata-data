  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  shrxl %ecx, %ebx, %edx  #  1     0    5      OPC=shrxl_r32_r32_r32  
  xchgb %dl, %dh          #  2     0x5  2      OPC=xchgb_rh_r8        
  rorb $0x1, %dh          #  3     0x7  2      OPC=rorb_rh_one        
  retq                    #  4     0x9  1      OPC=retq               
                                                                      
.size target, .-target
