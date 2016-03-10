  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  setbe %r11b              #  1     0     4      OPC=setbe_r8       
  movsbl %r11b, %esi       #  2     0x4   4      OPC=movsbl_r32_r8  
  addw %si, %si            #  3     0x8   3      OPC=addw_r16_r16   
  callq .read_cf_into_rbx  #  4     0xb   5      OPC=callq_label    
  adcl %ebx, %esi          #  5     0x10  3      OPC=adcl_r32_r32   
  setne %ah                #  6     0x13  3      OPC=setne_rh       
  retq                     #  7     0x16  1      OPC=retq           
                                                                    
.size target, .-target
