  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  shrxl %ecx, %ebx, %ecx  #  1     0    5      OPC=shrxl_r32_r32_r32  
  movzwl %cx, %esi        #  2     0x5  3      OPC=movzwl_r32_r16     
  sarb $0x1, %sil         #  3     0x8  3      OPC=sarb_r8_one        
  retq                    #  4     0xb  1      OPC=retq               
                                                                      
.size target, .-target
