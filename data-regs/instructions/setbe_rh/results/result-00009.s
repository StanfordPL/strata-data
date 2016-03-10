  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode              
.target:                   #        0    0      OPC=<label>         
  callq .read_zf_into_rcx  #  1     0    5      OPC=callq_label     
  setbe %al                #  2     0x5  3      OPC=setbe_r8        
  xaddb %ch, %al           #  3     0x8  3      OPC=xaddb_r8_rh     
  movswl %cx, %eax         #  4     0xb  3      OPC=movswl_r32_r16  
  retq                     #  5     0xe  1      OPC=retq            
                                                                    
.size target, .-target
