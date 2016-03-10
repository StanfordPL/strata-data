  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                    #  Line  RIP   Bytes  Opcode                 
.target:                  #        0     0      OPC=<label>            
  xorl %r8d, %r8d         #  1     0     3      OPC=xorl_r32_r32       
  movsbl %ah, %ecx        #  2     0x3   3      OPC=movsbl_r32_rh      
  andnl %ecx, %r8d, %ecx  #  3     0x6   5      OPC=andnl_r32_r32_r32  
  sarw $0x1, %cx          #  4     0xb   3      OPC=sarw_r16_one       
  xchgb %ah, %cl          #  5     0xe   2      OPC=xchgb_r8_rh        
  retq                    #  6     0x10  1      OPC=retq               
                                                                       
.size target, .-target
