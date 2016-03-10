  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movzbl %ah, %ecx  #  1     0    3      OPC=movzbl_r32_rh  
  movzbl %ch, %eax  #  2     0x3  3      OPC=movzbl_r32_rh  
  xaddb %ah, %cl    #  3     0x6  3      OPC=xaddb_r8_rh    
  notw %ax          #  4     0x9  3      OPC=notw_r16       
  retq              #  5     0xc  1      OPC=retq           
                                                            
.size target, .-target
