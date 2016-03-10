  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  movzbl %bh, %esi    #  1     0    3      OPC=movzbl_r32_rh    
  movswl %si, %edx    #  2     0x3  3      OPC=movswl_r32_r16   
  orb %ah, %dl        #  3     0x6  2      OPC=orb_r8_rh        
  cmovnol %edx, %eax  #  4     0x8  3      OPC=cmovnol_r32_r32  
  xaddb %ah, %dl      #  5     0xb  3      OPC=xaddb_r8_rh      
  retq                #  6     0xe  1      OPC=retq             
                                                                
.size target, .-target
