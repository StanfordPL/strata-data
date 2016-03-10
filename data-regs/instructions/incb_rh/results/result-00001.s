  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  xorl %ecx, %ecx          #  1     0     2      OPC=xorl_r32_r32   
  adcb %ah, %ch            #  2     0x2   2      OPC=adcb_rh_rh     
  xchgl %ecx, %ecx         #  3     0x4   2      OPC=xchgl_r32_r32  
  incw %cx                 #  4     0x6   3      OPC=incw_r16       
  callq .read_cf_into_rbx  #  5     0x9   5      OPC=callq_label    
  shlb $0x1, %bh           #  6     0xe   2      OPC=shlb_rh_one    
  adcb %cl, %ah            #  7     0x10  2      OPC=adcb_rh_r8     
  retq                     #  8     0x12  1      OPC=retq           
                                                                    
.size target, .-target
