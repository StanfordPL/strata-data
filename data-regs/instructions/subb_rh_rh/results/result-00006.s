  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP  Bytes  Opcode              
.target:                   #        0    0      OPC=<label>         
  xorb %al, %al            #  1     0    2      OPC=xorb_r8_r8      
  callq .read_cf_into_rcx  #  2     0x2  5      OPC=callq_label     
  cmovsw %cx, %ax          #  3     0x7  4      OPC=cmovsw_r16_r16  
  sbbb %bh, %ah            #  4     0xb  2      OPC=sbbb_rh_rh      
  retq                     #  5     0xd  1      OPC=retq            
                                                                    
.size target, .-target
